import { NtosWindow } from '../layouts';
import { IntegratedCircuitContent } from './IntegratedCircuit';

export const NtosCode = (props) => {
  return (
    <NtosWindow>
      <NtosWindow.Content
        style={{
          backgroundImage: 'none',
        }}
      >
        <IntegratedCircuitContent />
      </NtosWindow.Content>
    </NtosWindow>
  );
};
